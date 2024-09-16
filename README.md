GIT INSTRUCTIE:

Test

Dit is een test

1. Clone the Repository
First, clone the repository from GitHub to your local machine:
```
git clone https://github.com/username/repository.git
```
Replace https://github.com/username/repository.git with the URL of the GitHub repository you want to clone.

2. Navigate to the Repository Directory
Once the repository is cloned, navigate to the directory:
```
cd repository
```

3. Set Up a New Branch for Your Work
To avoid interfering with other people's work, create a new branch for your changes:
```bash
git checkout -b my-feature-branch
```
Replace my-feature-branch with a descriptive name for your branch. This name should reflect the specific feature or task you are working on.

4. Make Your Edits
Now you can make your edits to the files in the repository. Your changes will be local to your branch and won’t affect the main branch or any other branches.

5. Commit Your Changes
After making your edits, add and commit your changes:
```
git add .
git commit -m "Describe your changes"
```
Replace "Describe your changes" with a meaningful commit message that explains what you changed.

6. Fetch and Rebase (Optional but Recommended)
Before pushing your changes, it’s a good practice to fetch the latest changes from the remote repository and rebase your branch on top of them:
```
