
tom = User.create(name: 'Tom', photo: 'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png', bio: 'Logic will get you from A to B. Imagination will take you everywhere')


martha = User.create(name: 'Martha', photo: 'https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png', bio: "Logic will get you from A to B. Imagination will take you everywhere.")
  
 tom_post1 = Post.create(title: "Lorem ipsum dolor sit amet", text: "Maecenas in dapibus odio. In iaculis turpis vitae pellentesque ultrices. Pellentesque sit amet augue rutrum, viverra leo vel, laoreet turpis. Aenean quis dolor faucibus, sollicitudin nisl at, euismod metus. Sed commodo purus molestie nulla fermentum posuere. Nunc quis cursus mauris, in pellentesque purus. Sed tristique mi ut bibendum placerat.
    Nunc lorem turpis, porttitor nec nunc ut, gravida rhoncus neque. Vestibulum accumsan ultrices nibh vitae lacinia. Fusce iaculis ex condimentum pellentesque vestibulum. Curabitur in lectus sit amet felis viverra consectetur. Nulla semper, leo sit amet ornare suscipit, libero turpis mattis justo, a lacinia leo dui non erat. Quisque erat massa, ultrices vel aliquam id, iaculis sit amet elit
    . Praesent eget diam at purus aliquet molestie. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce auctor sem quam. Curabitur nec convallis ligula. Phasellus sed dignissim metus. Integer nibh lacus, tincidunt et ipsum sit amet, gravida posuere ipsum.", author:tom)

matha_comment1 =  Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis ligula eget nisl sodales mollis. Pellentesque blandit libero non urna", author_id: martha.id, post_id: tom_post1.id)
martha_comment2 =  Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis ligula eget nisl sodales mollis. Pellentesque blandit libero non urna", author_id: martha.id, post_id: tom_post1.id)