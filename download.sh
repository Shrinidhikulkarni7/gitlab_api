mkdir gitlab

cd gitlab

mkdir temp

curl -L --header "PRIVATE-TOKEN:YOUR_ACCESS_TOKEN" "https://git.example.com/api/v4/projects/PROJECT_ID/jobs/artifacts/BRANCH_NAME/download?job=JOB_NAME" > temp/output.zip

cd temp

unzip output.zip

find . -name *.jar -exec mv {} DESTINATION_FOLDER \;

rm -rf *
