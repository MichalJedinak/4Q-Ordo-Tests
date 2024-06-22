*** Variables ***
${chrien}     
${aquatrend}   
@{servers}    ${chrien}    ${aquatrend}
${chrien_name}  
${aquatrend_name}     
${custumer_3}    customer3
@{customers}    ${chrien_name}    ${aquatrend_name}    ${custumer_3}
${password}     heslo
@{passwords}    ${password}
# úvodná stránka *******************
${menu _bar}     xpath=//android.widget.Button[@text,'Otvoriť navigačnú ponuku']
# alternative fur deutschland  //android.widget.FrameLayout[@resource-id='android:id/content']//android.view.View//android.view.View//android.view.View//android.view.View//android.view.View//android.widget.Button[@text='Otvoriť navigačnú ponuku']
# //android.widget.FrameLayout[@resource-id='android:id/content']//android.view.View//android.widget.Button[@text='Otvoriť navigačnú ponuku']

${objednavky}    xpath=//android.view.View[@text,'Objednávky']
${statistiky}    xpath=//android.view.View[@text,'Štatistiky']
${zakaznici}    xpath=//android.view.View[@text,'Zákazníci']
${produkty}    xpath=//android.view.View[@text,'Produkty']
${ulohy}    xpath=//android.view.View[@text,'Úlohy']
${poziadavky}    xpath=//android.view.View[@text,'Požiadavky']
${notifikacie}    xpath=//android.view.View[@text,'Notifikácie']
${problemy}    xpath=//android.view.View[@text,'Problémy']
${nastavenia}    xpath=//android.view.View[@text,'Nastavenia']
@{nastenka_list}    ${objednavky}  ${statistiky}  ${zakaznici}  ${produkty}  ${ulohy}  ${poziadavky}  ${notifikacie}  ${problemy}  ${nastavenia}

# menu po kliknuti na menu bar
${objednavky_mb}    xpath=//android.view.View[@text,'Objednávky'][1]
${statistiky_mb}    xpath=//android.view.View[@text,'Štatistiky'][2]
${zakaznici_mb}    xpath=//android.view.View[@text,'Zákazníci'][3]
${produkty_mb}    xpath=//android.view.View[@text,'Produkty'][4]
${ulohy_mb}    xpath=//android.view.View[@text,'Úlohy'][5]
${poziadavky_mb}    xpath=//android.view.View[@text,'Požiadavky'][6]
${notifikacie_mb}    xpath=//android.view.View[@text,'Notifikácie'][7]
${problemy_mb}    xpath=//android.view.View[@text,'Problémy'][8]
${nastavenia_mb}    xpath=//android.view.View[@text,'Nastavenia'][9]
@{menubar_list}    ${objednavky_mb}  ${statistiky_mb}  ${zakaznici_mb}  ${produkty_mb}  ${ulohy_mb}  ${poziadavky_mb}  ${notifikacie_mb}  ${problemy_mb}  ${nastavenia_mb}

# vyhladavanie filter
${lupa}    xpath=//android.widget.Button[@text,'Vyhľadaj']
${filter}    xpath=//android.widget.Button[@text,'Filtruj']
${plus}    xpath=//android.widget.Button[@text,'Pridať novú objednávku']
@{filter_list}    ${lupa}  ${filter}  ${plus}

# Objednávky menu bar nedokončené dokončené spracované všetky
${nedokoncene}    xpath=//android.view.View[@text,'NedokončenéKarta 1 z 4']
${dokoncene}    xpath=//android.view.View[@text,'NedokončenéKarta 2 z 4']
${spracovane}    xpath=//android.view.View[@text,'NedokončenéKarta 3 z 4']
${vsetky}    xpath=//android.view.View[@text,'NedokončenéKarta 4 z 4']
@{objednavky_menu}    ${nedokoncene}  ${dokoncene}  ${spracovane}  ${vsetky} 

#  Rozpracované objednávky 
${detail}    xpath=//android.widget.HorizontalScrollView//android.view.View[@text,'DetailKarta 1 z 5']
${zakaznik}    xpath=//android.widget.HorizontalScrollView//android.view.View[@text,'ZákazníkKarta 2 z 5']
${polozky}    xpath=//android.widget.HorizontalScrollView//android.view.View[@text,'PoložkyKarta 3 z 5']
${komunikacie}    xpath=//android.widget.HorizontalScrollView//android.view.View[@text,'ZákazníkKarta 4 z 5']
${poziadavky}    xpath=//android.widget.HorizontalScrollView//android.view.View[@text,'ZákazníkKarta ť z 5']
@{rozpracovane_menu}    ${detail}  ${zakaznik}  ${polozky}  ${komunikacie}  ${poziadavky}
${pridaj_polozku}    xpath=//android.widget.Button[@text,'Pridať novú položku']
${index_polozka}     
${polozka}     xpath=//android.view.View[@text,'list-view']//android.view.View//android.widget.ScrollView
${mnozstvo}    xpath=//android.widget.EditText[@text,'Žiadané množstvo (v ks)']
${uloz_polozku}    xpath=//android.widget.Button[@text,'Uložiť položku']
${potvrd_objednavku}    xpath=//android.widget.Button[@text,'Potvrdiť objednávku']
${dalej}    xpath=//android.widget.Button[@text,'Ďalej']
${okno_potvrdenie_potvrdit}    xpath=//android.widget.Button[@text,'Potvrdiť'okno_pokracovatbezpolohy]
${okno_pokracovatbezpolohy}    xpath=//android.widget.Button[@text,'Pokračovať bez polohy']
