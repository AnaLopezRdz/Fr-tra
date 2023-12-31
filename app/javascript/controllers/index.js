// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import DeleteIngredientsController from "./delete_ingredients_controller"
application.register("delete-ingredients", DeleteIngredientsController)

import DestroyController from "./destroy_controller"
application.register("destroy", DestroyController)

import FavoritableController from "./favoritable_controller"
application.register("favoritable", FavoritableController)

import FridgeListController from "./fridge_list_controller"
application.register("fridge-list", FridgeListController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import VirtualKeyboardController from "./virtual_keyboard_controller"
application.register("virtual-keyboard", VirtualKeyboardController)
