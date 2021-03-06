// Copyright (c) 2012, HTW Berlin / Project HardMut
// (http://www.hardmut-projekt.de)
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
// * Redistributions of source code must retain the above copyright notice,
//   this list of conditions and the following disclaimer.
// * Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the distribution.
// * Neither the name of the HTW Berlin / INKA Research Group nor the names
//   of its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.

// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
// IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//  Page_Alice_Example8.m
//  iDiary2
//
//  Created by Markus Konrad on 13.06.12.
//  Copyright (c) 2012 INKA Forschungsgruppe. All rights reserved.
//

#import "Page_Alice_Example8.h"

@implementation Page_Alice_Example8

- (id)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void)loadPageContents {
    // set individual properties
    pageBackgroundImg = @"alice_seiten_hintergrund.png";
      
    // add individual media objects for this page here
    MediaDefinition *mDefWelcomeText = [MediaDefinition mediaDefinitionWithText:@"Bye bye!" font:@"Courier New" fontSize:22 color:ccBLACK inRect:CGRectMake(60, 700, 400, 100)];
    [mediaObjects addObject:mDefWelcomeText];
    MediaDefinition *mDefWelcomeText2 = [MediaDefinition mediaDefinitionWithText:@"This was a short introduction to what is possible with the iDiary framework. Check out other layer classes, too! For example MemoryGameLayer, SoccerGameLayer, BoxingLayer, etc." font:@"Courier New" fontSize:18 color:ccBLACK inRect:CGRectMake(60, 660, 400, 500)];
    [mediaObjects addObject:mDefWelcomeText2];
    
    // add a movable text
    MediaDefinition *movableText = [MediaDefinition mediaDefinitionWithText:@"I'm moveable text!" font:@"Courier New" fontSize:26 color:ccBLACK inRect:CGRectMake(700, 350, 250, 100)];
    [[movableText attributes] setValue:[NSNumber numberWithBool:YES] forKey:@"isInteractive"];
    [[movableText attributes] setValue:[NSNumber numberWithBool:YES] forKey:@"isMovable"];
    
    [mediaObjects addObject:movableText];
    
    // add a movable graphic
    MediaDefinition *movableImg = [MediaDefinition mediaDefinitionOfType:MEDIA_TYPE_PICTURE withValue:@"alice_example8__blatt1.png" inRect:CGRectMake(700, 100, 222, 128) interactive:YES movable:YES];
    
    [mediaObjects addObject:movableImg];
        
    // common media objects will be loaded in the PageLayer
    [super loadPageContents];
}

@end
