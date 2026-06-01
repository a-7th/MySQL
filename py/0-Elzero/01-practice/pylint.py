#pylint() checks the code quality
def pipi(name):
    x = "pipi luvs"
    return f"{x} {name}"
pipi("a7th")
#so pylint keeps rating our code and what to add on it so we can get a 10/10 rate

#================================================================================
#a higher rate version
"""This module demonstrates a perfect 10/10 Pylint score.

It includes a module-level docstring explaining what the file does.
"""

def calculate_area(width: float, height: float) -> float:
    """Calculate the area of a rectangle.

    Args:
        width (float): The width of the rectangle.
        height (float): The height of the rectangle.

    Returns:
        float: The calculated area.
    """
    rect_area = width * height
    return rect_area


if __name__ == "__main__":
    # Pylint loves lowercase, snake_case names for variables
    result_area = calculate_area(5.0, 10.0)
    print(f"The area is: {result_area}")

#add docstrings + using snake_case + remove unused stuff + fix our file name etc