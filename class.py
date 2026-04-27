class mglab:
    def __init__(self, name):
        self.name = name

    def display(self):
        print(f"Hello, I am {self.name} from mglab!")
if __name__ == "__main__":
    mglab_instance = mglab("MGLAB")
    mglab_instance.display()
    