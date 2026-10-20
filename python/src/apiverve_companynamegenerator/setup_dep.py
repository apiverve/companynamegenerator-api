from setuptools import setup, find_packages

setup(
    name='apiverve_companynamegenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Company Name Generator generates business name ideas from a seed keyword, returning a list of suggested brand names. Supply any industry or concept word to receive ready-made brand naming suggestions.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/companynamegenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
