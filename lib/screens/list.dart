import 'package:flutter/material.dart';

class videoModal {
  String name = "";
  String content = "";
  String Resource = "";
  videoModal(
      {required this.name, required this.content, required this.Resource});
}

List<videoModal> videoList = [
  videoModal(
      name: "Shark Tunk",
      content: "These videos contain a heavy load of business Ideas, Shark Investments, pitches, and different modes of Transactional theory. Watch Now",
      Resource: "assets/video/Shark.mp4"),
  videoModal(
      name: " ASP.NET Core Web API tutorial",
      content: "This is the first video of the ASP.NET Core Web API tutorial.In this complete step by step course of ASP",
      Resource: "assets/video/asp.mp4"),
  videoModal(
      name: " The Breakup Song Full Video",
      content: "The Breakup Song is here! A quirky and fun dance number, ",
      Resource: "assets/video/song.mp4"),
  videoModal(
      name: " Attack On The CID Team ",
      content: "he first thrilling investigative series on Indian Television, is today one of the most popular shows on Sony Entertainment Television",
      Resource: "assets/video/cid.mp4"),
  videoModal(
      name: "Education",
      content: "true defination of education by an old man",
      Resource: "assets/video/true-defination-of-education-by-an-old-man-💯_.mp4"),
  videoModal(
      name: "Kalam Sir",
      content: "apj abdul kalam s success mantra for all the student",
      Resource: "assets/video/apj-abdul-kalam-s-success-mantra-for-all-the-stu.mp4"),
];