def fib(index, seq=None):
    if seq == None:
        seq = [0, 1]
    if index == 1:
        return seq[-1]

    seq.append(seq[-2] + seq[-1])
    return fib(index - 1, seq)

print(fib(7))
