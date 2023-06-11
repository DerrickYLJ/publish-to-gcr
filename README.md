# publish-to-gcr
1. Create an Image
2. Create Personal Access Token on Github
3. Authenticate Github Container Registry 
4. Tag and push our image to GHCR
Docker Image Publish Testing 
```
export CR_PAT = <TOKEN>
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
echo "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" | docker login ghcr.io -u derrickylj --password-stdin
```
