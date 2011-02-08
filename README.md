#Where's Lunch

####NOTE: These notes/questions are in draft form. They are subject to dramatic revision with Jordan's feedback.

This is a small webapp for gathering ideas and votes for lunch spots, because my friends and I can never decide what to do for lunch.

Code: <http://github.com/tehviking/web-dev-1-code-review>

Live Site:  <http://whereslunch.heroku.com>

##Notes:

When you visit the site from an iPhone/iPad, it's unusable due to fixed-width table that doesn't scroll.

I'm really interested in making it look/work nicer, like [Get Satisfaction](http://getsatisfaction.com/getsatisfaction/topics/offer_private_messaging_capabilities).

It's got some pretty obvious functionality holes, like not supporting more than one group, but I'm looking more at refining the look/feel/UI first to get my friends using it, then creating features so it could be used by others.

##Questions:

1. Would it be better to do this in CSS than in a table, or too complex?
2. How I could present this same information in a friendlier way?
3. If I wanted to include a picture with each restaurant, how should I present it?
4. When I resize the window, the table crops and there's no way to scroll to see the whole thing. Anyone know why?
5. The submission form is extremely vanilla Rails. What are some ways I could spice it up?
6. If I were to completely overhaul the UI, do you have an example of something done well?
7. What's a better navigation strategy than the links at bottom for Popular and Top recommendations? Tabs? Something else?

##Assignment:

This is a two-part assignment in conducting design-related code review.

For the first part, you should come up with a list of notes and questions for the reviewers of your project.  These questions will help the students who review your project give you the feedback you need.  You can add these to the notes section on your submission, so that they are displayed in the same place as the comments.

The second part of the project is to review other students projects.  You should study and review at least two other projects (more is OK), answering the questions left by the project maintainer and also sharing any other thoughts you might have about the code.  

You can find projects to comment on by clicking on other students submissions in the course dashboard.  Pick projects that either haven't been reviewed, or have only one other commenter, so that the total amount of reviews get evenly distributed across the projects.

Remember, the focus of this exercise (and this course) is on web development.  Your comments and questions should mainly be about the high level structure of your project, i.e. UX (User Experience), framework choices, etc.  Comments about minor idioms are okay, but should be secondary to high level discussion.

Once you have created a list of questions and notes for your project, and reviewed at least two other projects, you can request a review on your submission to get credit for the assignment.  Include in your comment links to the other submissions you have reviewed.