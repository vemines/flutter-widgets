def generate_switch_case(input_file, output_file):
    """
    Reads class names from an input text file and writes them to an output file
    in a switch-case format.

    Args:
        input_file (str): Path to the input text file.
        output_file (str): Path to the output text file.
    """
    try:
        with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
            outfile.write("Widget stringToRoute(String widgetString) {\n")
            outfile.write("switch (widgetString) {\n")
            for line in infile:
                class_name = line.strip()
                if class_name and class_name != "Export":
                    outfile.write(f"case '{class_name}Screen()':\n")
                    outfile.write(f"\treturn const {class_name}Screen();\n")

            outfile.write("""default: return Center(child: Text('Unknown Widget: $widgetString')); }}""")            

        print(f"Successfully processed '{input_file}' and wrote to '{output_file}'.")
    except FileNotFoundError:
        print(f"Error: Input file '{input_file}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    input_filename = "orders.txt" 
    output_filename = "switch-case.txt"
    generate_switch_case(input_filename, output_filename)