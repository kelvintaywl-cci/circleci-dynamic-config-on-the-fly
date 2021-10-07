# IMPORTANT: this script should be run inside the .circleci folder
# TODO: make this agnostic to directory from where script is run,
# or raise an error in the worst case.

cat templates/parameters.yml >> next-config.yml

# add jobs
echo -e "jobs:" >> next-config.yml
cat templates/jobs/deploy.yml >> next-config.yml

cat templates/workflows.yml >> next-config.yml
