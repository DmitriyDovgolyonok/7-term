def random_generator(initial_number1, initial_number2):
    while True:
        square_str = str(initial_number1 * initial_number2)
        start_index = len(square_str) // 4
        finish_index = start_index + 1 if len(square_str) % 2 else start_index
        initial_number = int(square_str[start_index:-finish_index])
        yield initial_number
        initial_number1 = initial_number2
        initial_number2 = initial_number

        # print(square_str, initial_number)


if __name__ == "__main__":
    generator = random_generator(123, 1456)
    for index, number in (zip(range(10), generator)):
        print("{0}: {1}".format(index, number))
