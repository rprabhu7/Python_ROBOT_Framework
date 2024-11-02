# MyLibrary.py
from robot.api.deco import keyword

class MyLibrary:
    @keyword
    def open_example_site(self, url):
        """Open the specified URL in the browser."""
        from selenium import webdriver
        self.driver = webdriver.Chrome()
        self.driver.get(url)

    @keyword
    def validate_title(self, expected_title):
        """Validate the current page title."""
        actual_title = self.driver.title
        if actual_title != expected_title:
            raise AssertionError(f'Expected title "{expected_title}", but got "{actual_title}".')

    @keyword
    def close_browser(self):
        """Close the browser."""
        self.driver.quit()
