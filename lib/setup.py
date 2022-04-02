from setuptools import setup

setup(
    name="mypkgs",
    description="Shared packages and modules between applications.",
    version="0.0.0",
    packages=["mypkg"],
    package_dir={"": "src"},
)
