(* $Id$ *)

(* �����¹Ԥ�������LANG=ja_JP.EUC�ʤɤȻ��ꤷ�ʤ���Фʤ�ʤ� *)

(* cut-and-paste ���б����Ƥ��ޤ�����edit�Ϥ��ޤ������ޤ��� *)

open Gtk

let window = Window.create `TOPLEVEL
let text = Text.create ()
let font = Gdk.Font.load_fontset "*-fixed-*--14-*"

let _ =
  Signal.connect window sig:Signal.delete_event
    cb:(fun _ -> Main.quit (); false);
  Container.add window text;
  Widget.realize text;
  Text.insert text "����ˤ���" :font

let _ =
  Widget.show_all window;
  Main.main ()
