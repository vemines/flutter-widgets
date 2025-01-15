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


def text_to_json(file_path):
    """
    Loads text data from a file, parses it based on indentation,
    and converts it into a JSON array of objects.

    Args:
        file_path (str): The path to the text file.

    Returns:
        str: A JSON string representing the data.
    """
    data = []
    current_group = None
    with open(file_path, 'r') as f:
        for line in f:
            if not line:
                continue
            if not line.startswith('	'):
                current_group = line.strip()
            elif current_group:
                widget_name = line.strip('\t').strip() # Remove leading tab and potential extra spaces
                data.append({
                    "path": "/" + to_kebab_case(widget_name),
                    "route": f"{widget_name}Screen()",
                    "group": current_group,
                    "file_name": to_snake_case(widget_name) + ".dart"
                })
    return json.dumps(data, indent=2)

# Example usage:
file_path = "group.txt"  # Assuming your file is named group.txt
json_output = text_to_json(file_path)

# To save the output to a JSON file:
with open("group-routes.json", "w") as outfile:
    outfile.write(json_output)