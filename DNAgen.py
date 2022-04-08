import random

random.seed (123)

def generateFASTA(filename, Nb):
    filename = input ("Enter filename:")
    Nb = input ("Enter number of base pairs:")
    dnafile = open(filename.seq, "w+" )
    return ''.join(random.choice('CGTA') for _ in range(Nb))
    dnafile.close()
    
