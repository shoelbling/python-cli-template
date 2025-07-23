import sys


def main():
    print("Hello from Python CLI!")
    if len(sys.argv) > 1:
        print(f"Args: {sys.argv[1:]}")


if __name__ == "__main__":
    main()