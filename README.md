# Meteor minimalism boilerplate

This is a meteor boilerplate aimmed for extremely agile development. 

Switching between complex project structure is painful, so why not make it simple? Mostly handling `main.jade` and `main.coffee`, you can develop your prototype meteor app in text editor with two vertical split, minimizing the needs to switch between files. Use complex project structure when project goes fat. (Special thanks to (c3h3)[https://github.com/c3h3]'s advice)



# Packages dependency

- coffeescript
- mquandalle:jade
- nooitaf:semantic-ui
- digilord:sugarjs


# Cheat sheet for developer

Meteor debug tool is your friend and often saves your day.

```
    meteor debug
```

Using external mongodb intead of minimongo

```
    MONGO_URL=mongodb://localhost:27017/YOUR_DATABASE meteor
```

Remove autopublish and insecure when going production.

```
    meteor remove autopublish insecure
```