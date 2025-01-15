import json
import re

def to_snake_case(camel_case_string):
  if not camel_case_string:
    return ""
  s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', camel_case_string)
  return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower()


def to_kebab_case(camel_case_string):
  s1 = re.sub('(.)([A-Z][a-z]+)', r'\1-\2', camel_case_string)
  return re.sub('([a-z0-9])([A-Z])', r'\1-\2', s1).lower()


def load_screen_data(filepath):
  """Loads screen data from a text file and returns a structured dataset.

  Args:
    filepath: The path to the text file containing screen data.

  Returns:
    A list of dictionaries, where each dictionary represents a screen.
    Returns an empty list if the file is empty or has unexpected format
  """
  screen_data = []

  try:
      with open(filepath, 'r') as f:
          for line in f:
              line = line.strip()
              if line: # Ignore empty lines
                widget_name = line
                screen_data.append({
                    "path": "/" + to_kebab_case(widget_name),
                    "route": f"{line}Screen()",
                    "file_name": to_snake_case(widget_name) + ".dart"
                })
  except FileNotFoundError:
     print(f"Error: File not found at {filepath}")
  except Exception as e:
     print(f"Error: An unexpected error occurred. {e}")
  
  return screen_data

def save_as_json(data, output_path):
    """Save the structured data as JSON file
    """
    try:
        with open(output_path, 'w') as f:
           json.dump(data, f, indent=2)
        print(f"Data has been successfully saved to {output_path}")
    except Exception as e:
        print(f"Error: An error occurred while saving data to JSON file {e}")


# Example usage:
if __name__ == "__main__":
    file_path = "orders.txt" # Replace with your file path
    output_json = 'default-routes.json'
    screen_dataset = load_screen_data(file_path)
    save_as_json(screen_dataset, output_json)