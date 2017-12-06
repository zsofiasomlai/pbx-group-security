BUCKET_NAME="pbx-group-security.com-cdn"

hugo
aws s3 sync --acl "public-read" --sse "AES256" public/ s3://$BUCKET_NAME --exclude 'post'

DISTRIBUTION_ID=E3K53GHHL4D0LE
#aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths /index.html / /page/*
aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths /index.html / /page/* /css/* /blog/*