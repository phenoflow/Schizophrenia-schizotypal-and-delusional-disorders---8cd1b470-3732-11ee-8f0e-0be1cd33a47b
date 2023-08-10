# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"101987.0","system":"med"},{"code":"102427.0","system":"med"},{"code":"12777.0","system":"med"},{"code":"22104.0","system":"med"},{"code":"36172.0","system":"med"},{"code":"56438.0","system":"med"},{"code":"58687.0","system":"med"},{"code":"6325.0","system":"med"},{"code":"67768.0","system":"med"},{"code":"85972.0","system":"med"},{"code":"88275.0","system":"med"},{"code":"96883.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('schizophrenia-schizotypal-and-delusional-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["schizophrenia-schizotypal-and-delusional-disorders-history---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["schizophrenia-schizotypal-and-delusional-disorders-history---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["schizophrenia-schizotypal-and-delusional-disorders-history---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
