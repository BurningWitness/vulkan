{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Struct.VkDisplayEventInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDisplayEventTypeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayEventInfoEXT" #-} VkDisplayEventInfoEXT =
       VkDisplayEventInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , displayEvent :: VkDisplayEventTypeEXT
         }

instance Storable VkDisplayEventInfoEXT where
  sizeOf    _ = #{size      VkDisplayEventInfoEXT}
  alignment _ = #{alignment VkDisplayEventInfoEXT}

  peek ptr = 
    VkDisplayEventInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"displayEvent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"displayEvent" ptr val

instance Offset "sType" VkDisplayEventInfoEXT where
  rawOffset = #{offset VkDisplayEventInfoEXT, sType}

instance Offset "pNext" VkDisplayEventInfoEXT where
  rawOffset = #{offset VkDisplayEventInfoEXT, pNext}

instance Offset "displayEvent" VkDisplayEventInfoEXT where
  rawOffset = #{offset VkDisplayEventInfoEXT, displayEvent}

#else

module Vulkan.Types.Struct.VkDisplayEventInfoEXT where

#endif