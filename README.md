<<<<<<< HEAD
# breenstmedical

Note to self about how to use: 
- breenst2 is the main folder. It contains both folders breenstmedical and breenst2-ghpages. 
- Of these subfolders, the breenstmedical folder is the one where the source code lives. You can cd into this folder and npm build dev (I think, may be npm run dev if that doesn't work) and then just develop the file. 
- When you're done developing, use npm run deploy (in terminal), and that'll make a new folder called *dist*. 
- The contents of this folder dist is the one that you can copy paste to GitHub. 

- The folder breenst2/breenst2-ghpages/breenstmedical is the one where can paste the contentse of this dist folder into. 
- This has a git associated with it that connects directly to p\*\*\*\*wakii@gmail.com's GitHub page for breenstmedical. 
- To actually "upload", use GitHub Desktop to commit, and then push to gh-pages branch. 
- Most of the time, though, it'll already have a bunch of assets and stuff in there. So to make it so that GitHub desktop actually recognises that something's been changed, you probably have to delete those first, commit, then copy paste the new files into that folder, and then commit -> push. 

- The CNAME is important. Change this if you're changing sites, obviously. 
- The /img folder in the breenst2-ghpages should remain not deleted and generally not changed. 
- !! If you're changing domain name, don't forget to change the name in vue.config.js as well, or your website will bug! 
=======
# breenstmedical
>>>>>>> parent of 872c39e (Deploy with removal of Samina)
