# GitHub Pages Deployment Guide

## Step-by-Step Setup Instructions

### 1. Enable GitHub Pages (CRITICAL - Do this first!)

1. Go to your repository: https://github.com/MathayoKyara/zttwebsite
2. Click **Settings** (top menu bar)
3. Scroll down and click **Pages** in the left sidebar
4. Under **"Source"**, select **"GitHub Actions"** (NOT "Deploy from a branch")
5. Click **Save**

**Important:** The workflow will NOT work until GitHub Pages is enabled with "GitHub Actions" as the source!

### 2. Check Workflow Status

1. Go to the **Actions** tab in your repository
2. You should see workflow runs listed
3. Click on the latest run to see if it's:
   - ✅ Green checkmark = Success
   - ❌ Red X = Failed (check the logs)
   - 🟡 Yellow circle = In progress

### 3. If Workflow is Failing

Check the workflow logs:
1. Click on the failed workflow run
2. Click on the **"deploy"** job
3. Expand each step to see error messages
4. Common issues:
   - **"Environment 'github-pages' not found"** → GitHub Pages not enabled (see step 1)
   - **Build errors** → Check Flutter version compatibility
   - **Permission errors** → Check repository settings

### 4. Manual Workflow Trigger (if needed)

If the workflow didn't run automatically:
1. Go to **Actions** tab
2. Click **"Deploy Flutter Web to GitHub Pages"** in the left sidebar
3. Click **"Run workflow"** button
4. Select **main** branch
5. Click **"Run workflow"**

### 5. Access Your Site

Once deployment is successful:
- Your site will be available at: **https://mathayokyara.github.io/zttwebsite/**
- It may take 1-5 minutes after the workflow completes for the site to be accessible
- Clear your browser cache if you see old content

### 6. Troubleshooting 404 Errors

If you still see 404 errors:

1. **Check if GitHub Pages is enabled:**
   - Settings → Pages → Should show "Your site is live at..."

2. **Check workflow status:**
   - Actions tab → Latest run should be successful

3. **Wait a few minutes:**
   - GitHub Pages can take 1-5 minutes to update after deployment

4. **Try incognito/private browsing:**
   - Your browser might be caching the 404 page

5. **Check the URL:**
   - Make sure you're visiting: `https://mathayokyara.github.io/zttwebsite/`
   - Note the trailing slash and correct username

### 7. Verify Files Are Deployed

Check if files are in the build output:
1. Go to Actions → Latest successful run
2. Expand "Upload artifact" step
3. You should see files being uploaded

## Common Issues and Solutions

### Issue: "Environment 'github-pages' not found"
**Solution:** Enable GitHub Pages in Settings → Pages → Source: "GitHub Actions"

### Issue: Workflow runs but site shows 404
**Solution:** 
- Wait 2-5 minutes after workflow completes
- Clear browser cache
- Check that the workflow actually succeeded (green checkmark)

### Issue: Build fails
**Solution:**
- Check the workflow logs for specific errors
- Ensure Flutter version is compatible
- Check that all dependencies are in pubspec.yaml

### Issue: Site loads but routes don't work
**Solution:**
- The 404.html file should handle this
- Make sure web/404.html exists and was copied to build/web

## Need Help?

If you're still having issues:
1. Check the Actions tab for error messages
2. Verify GitHub Pages is enabled correctly
3. Make sure you're using the correct URL format
4. Wait a few minutes after deployment completes

