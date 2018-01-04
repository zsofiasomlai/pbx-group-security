BUCKET_NAME="pbx-group-security.com-cdn"
DISTRIBUTION_ID=E3K53GHHL4D0LE

aws s3 sync --acl "public-read" --sse "AES256" public/ s3://$BUCKET_NAME --exclude 'post'
aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths /index.html / /page/* /css/* /blog/* /contact/* /challenges/* /roles/* /77e653f4