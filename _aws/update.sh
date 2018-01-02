BUCKET_NAME="pbx-group-security.com-cdn"

hugo

./_aws/s3-sync.sh



#aws s3 sync --acl "public-read" --sse "AES256" public/ s3://$BUCKET_NAME --delete

#DISTRIBUTION_ID=E3K53GHHL4D0LE
#aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths /index.html / /page/* /css/* /blog/* /contact/*