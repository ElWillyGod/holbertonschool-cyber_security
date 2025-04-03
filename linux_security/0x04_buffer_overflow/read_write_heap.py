#!/usr/bin/pyhton3
"""
esto va a ser dificil, se supone que tengo que modificar la palabra que esta en el heap
por la nueva palabra que quiero
"""

import sys

def read_from_heap(pid, search_str, replace_str):
    """
    buscar en el heao search_str y reemplazarlo por replace_str
    """

    map_pid = f"/proc/{pid}/maps"
    mem_pid = f"/proc/{pid}/mem"

    with open(map_pid, "r") as f:
        lines = None
        for line in f:
            if "[heap]" in line:
                lines = line
                break

        #problemas con el rango de memoria
        #print("problema1 con el rango de memoria")

        init, fin = [int(x, 16) for x in lines.split()[0].split("-")]

    with open(mem_pid, "r+b") as f:
        f.seek(init)
        data = f.read(fin - init)

        index = data.find(search_str)

        f.seek(init + index)
        f.write(replace_str.ljust(len(search_str), b'\x00'))


def main ():
    """
    main
    """
    pid = sys.argv[1]
    search_str = sys.argv[2].encode()
    replace_str = sys.argv[3].encode()

    read_from_heap(pid, search_str, replace_str)

if __name__ == "__main__":
    main()
