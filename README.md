# C++ Memory Leak Detection Template using Valgrind and Google Test

This is a template repository for setting up a Docker container to test C++ code for memory leaks using Valgrind and Google Test. The repository provides a Dockerfile and necessary configuration to build and run the tests in an isolated environment.

## Prerequisites

- [Docker](https://www.docker.com/get-started) must be installed on your system to use this template.

## Contents

- [Dockerfile](Dockerfile): Defines the Docker image with necessary dependencies.
- [Makefile](Makefile): Contains commands to build and test the code within the Docker container.
- [valgrind.suppressions](valgrind.suppressions): Optional Valgrind suppressions file for suppressing known issues.
- [src/](src/): Directory containing your C++ source code and test files.
- [test/](test/): Directory containing your Google Test files.

## Setup and Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/yourusername/your-repo.git
    cd your-repo
    ```

2. Add your C++ source code to the `src/` directory.

3. Modify the [Makefile](Makefile) to include the necessary compilation and linking commands for your code and tests.

4. Build the Docker image:

    ```bash
    make docker_build
    ```
5. Run the Valgrind memory leak check:

    ```bash
    make docker_start
    ```
   
6. The test output and Valgrind analysis will be displayed on the terminal. Memory leak information will be saved in `valgrind.txt`.

## Notes

- Modify the commands in the [Makefile](Makefile) according to your specific project's requirements.
- If you have known Valgrind issues that you want to suppress, you can add them to [valgrind.suppressions](valgrind.suppressions).
- This template assumes that your project is structured in a certain way. You might need to adapt it to your project's layout and build system.

## License

[MIT License](LICENSE)
