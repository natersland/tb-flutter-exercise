import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

enum MenuType { square, rectangular }

class MenuItemData {
  final MenuType menuType;
  final String title;
  final Color color;
  final int crossAxisCellCount;
  final int mainAxisCellCount;
  final String image;
  final String imageTitle;
  final String imageDetail;

  const MenuItemData({
    required this.menuType,
    required this.title,
    this.color = Colors.blue,
    required this.crossAxisCellCount,
    required this.mainAxisCellCount,
    required this.image,
    required this.imageTitle,
    required this.imageDetail,
  });
}

List<MenuItemData> menuItemDataList = [
  MenuItemData(
      menuType: MenuType.square,
      title: 'Menu 1',
      color: Colors.blue,
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      image: Assets.images_img_cat_1.path,
      imageTitle: "Whisker Wonderland: A Feline Fantasy",
      imageDetail: "Step into the enchanting world of 'Whisker Wonderland,' where feline dreams come to life in a symphony of whiskers and wonder. This magical tableau unfolds in hues of azure and cobalt, a celebration of the whimsical beauty that graces the realm of cats.\n\nAs you immerse yourself in the image, envision a fanciful landscape where fluffy whiskers become ethereal bridges to unexplored realms. The cats, with eyes aglow like sapphires, navigate this wonderland with a curious grace that befits their regal demeanor. 'Whisker Wonderland' is not merely an image; it's a portal to a realm where the ordinary transforms into the extraordinary.\n\nThe square format of the image mirrors the balanced symmetry of the feline world. Each whisker is a brushstroke in a masterpiece, creating a tapestry that tells the story of whimsy and elegance. Amidst the azure backdrop, the cats engage in a dance of playfulness, their tails tracing arcs of joy in the air.\n\n'Whisker Wonderland' beckons you to join the festivities, inviting you to explore the nooks and crannies of this fanciful landscape. The cats, with their tufted ears and velvety paws, embody the spirit of feline fantasy, where every corner holds a secret and every whisker is a key to unlocking the magic within.\n\nIn this square sanctuary, time seems to stand still, allowing you to savor the enchantment of 'Whisker Wonderland.' It's a celebration of the regality and charm that cats bring to our lives, a reminder that within their whiskers lies a gateway to a world where fantasy and feline grace converge."
  ),
  MenuItemData(
      menuType: MenuType.rectangular,
      title: 'Menu 2',
      color: Colors.yellow,
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      image: Assets.images_img_cat_2.path,
      imageTitle: "Moonlit Paws: The Mystique of Midnight Cats",
      imageDetail: "In the hushed stillness of midnight, a mysterious world unfolds, cloaked in the soft glow of moonlight. 'Moonlit Paws' captures the essence of this enigmatic realm, where feline mystique reigns supreme. The scene is painted with shades of indigo and silver, a celestial canvas upon which the secrets of the night are written in the delicate footprints of elusive cats.\n\nAs you delve into the captivating allure of 'Moonlit Paws,' imagine a moonlit garden where shadows dance in tandem with the graceful movements of nocturnal creatures. The cats, adorned in their silky fur, move with an otherworldly elegance, their paws creating a rhythmic melody on the dew-kissed grass. It's a nocturnal ballet, a dance of stealth and grace that unfolds under the watchful gaze of the moon.\n\nThe image beckons you to join the cats in their moonlit escapade, inviting you to explore the magic that awakens when the world sleeps. The air is filled with a sense of quiet anticipation, as if the very fabric of the night holds its breath in reverence to the mystique that unfolds. 'Moonlit Paws' is not just an image; it's an invitation to embrace the unknown, to revel in the beauty of the nocturnal wonders that stir the imagination.\n\nIn the silence of the night, the cats become ethereal beings, their fur aglow with the luminescence of moonbeams. Their eyes, two gleaming orbs of curiosity, reflect the secrets of the cosmos. Each pawprint tells a story, a tale of midnight adventures and clandestine rendezvous in the moonlit garden. 'Moonlit Paws' captures a fleeting moment in the timeless dance between felines and the nocturnal tapestry they traverse."
  ),
  MenuItemData(
      menuType: MenuType.rectangular,
      title: 'Menu 3',
      color: Colors.red,
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      image: Assets.images_img_cat_3.path,
      imageTitle: "Sunbeam Serenity: Kittens Basking in Radiant",
      imageDetail: "Bask in the heartwarming glow of this enchanting scene, where playful kittens find solace in the sun's tender embrace. As the sunbeam bathes them in radiant warmth, their fur glistens like golden threads, casting a magical spell on all who witness this moment of feline serenity. It's a tableau of innocence and joy, capturing the essence of carefree days and the pure bliss found in the simplest pleasures of life.\n\nAmidst the dappled sunlight, the kittens engage in delightful frolics, chasing each other with boundless energy. Their tiny paws patter softly on the sun-kissed ground, creating a rhythmic melody that harmonizes with the whispers of the breeze. The air is filled with the subtle fragrance of blooming flowers, as if nature itself is applauding the beauty of these whimsical creatures.\n\nAs you gaze upon the scene, a sense of tranquility envelops your being. The play of light and shadow, the innocent mirth of the kittens, and the warmth of the sunbeam create a moment frozen in time. It's a reminder of the pure, unbridled joy that can be found in the simplest moments, a respite from the complexities of the world.\n\nIn this haven of sunlight and fur, time seems to stand still. The kittens, oblivious to the worries of the world, embody a sense of timeless bliss. The scene unfolds like a cherished memory, etching itself into your heart and inviting you to embrace the serenity that radiates from the sunlit tableau of feline enchantment."
  ),
];
