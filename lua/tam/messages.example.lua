--[[
Informations      :
  DO NOT EDIT OR DELETE THIS FILE WITH YOUR MESSAGES, THEY WILL BE DELETED FOR EACH UPDATE !!!
  This file is only for demonstration prupose.
  If you want to create your own file, copy this file and name it "messages.lua" and keep the same structure.

  Message structure is like this :
    { MESSAGE, Time in seconds until the next message, Red Color, Green Color, Blue Color}

  Lang structure is like this:
    ["LANG"] = {
      MESSAGE structure,
      MESSAGE structure,
      etc...
    }

  For the LANG values, see https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2

  After created your file you need to restart the server to take the changes.

  -- > For more informations or some help, you can go on https://github.com/iKlem/TAM < --

Author            : iKlem
Last modification : 21/08/2016
]]

TAM.messages = {
  ["FR"] = {
    {"---- [[ Addon TAM est installé avec succès ! ]] ----", 0, 255, 255, 255},
    {"Bienvenue sur TAM !", 2, 255, 255, 255},
    {"Ces messages sont la pour vous montrer comment fonctionne l'addon.", 5, 255, 255, 255},
    {"Le temps d'un message peut être modifié comme pour la couleur.", 5, 255, 255, 255},
    {"Voila ce message en bleu.", 3, 0, 64, 255},
    {"Si vous souhaitez créer vos messages vous pouvez regarder dans \"messages.example.lua\" pour plus d'informations et des liens vers de l'aide.", 5, 255, 255, 255},
    {"N.B. : Si vous êtes sur le serveur et que vous n'avez pas encore créer votre fichier de messages, vous verrez en boucle les messages précédent.", 5, 255, 100, 100}
  },
  ["EN"] = {
    {"---- [[ TAM addon is correctly installed ! ]] ----", 0, 255, 255, 255},
    {"Welcome with TAM !", 2, 255, 255, 255},
    {"These messages are there to show how the addon works.", 5, 255, 255, 255},
    {"The time between each message can be modified. Same for the color.", 5, 255, 255, 255},
    {"This message is blue.", 3, 0, 0, 255},
    {"If you want to create your own messages, please look at the file \"message.example.lua\" for informations and link to help.", 5, 255, 255, 255},
    {"N.B. : IF you are on the server and you haven't created your own messages file, you will see in loop all the previous messages.", 5, 255, 128, 128}
  }
}
