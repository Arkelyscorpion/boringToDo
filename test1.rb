require 'watir'
browser = Watir::Browser.new 
browser.goto("file:///D:/Programming/Repositories/boringToDo/index.html")
textbox = browser.text_field id: 'new-task-input'
textbox.exists?
$x = 1

while $x<=10
    textbox.set "adding #$x to the list"
    textbox.value
    browser.button(id: 'new-task-submit').click
    browser.screenshot.save "#$x ss.png"
    $x = $x + 1
end

while $x>1
    browser.div(id: 'tasks').div(class: 'task').div(class: 'actions').button(class: 'delete').click
    $x = $x - 1
end
browser.screenshot.save "final_page.png"
browser.close




