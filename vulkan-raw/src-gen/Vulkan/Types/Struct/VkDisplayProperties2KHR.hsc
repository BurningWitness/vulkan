{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Struct.VkDisplayProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayPropertiesKHR



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayProperties2KHR" #-} VkDisplayProperties2KHR =
       VkDisplayProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , displayProperties :: VkDisplayPropertiesKHR
         }

instance Storable VkDisplayProperties2KHR where
  sizeOf    _ = #{size      VkDisplayProperties2KHR}
  alignment _ = #{alignment VkDisplayProperties2KHR}

  peek ptr = 
    VkDisplayProperties2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"displayProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"displayProperties" ptr val

instance Offset "sType" VkDisplayProperties2KHR where
  rawOffset = #{offset VkDisplayProperties2KHR, sType}

instance Offset "pNext" VkDisplayProperties2KHR where
  rawOffset = #{offset VkDisplayProperties2KHR, pNext}

instance Offset "displayProperties" VkDisplayProperties2KHR where
  rawOffset = #{offset VkDisplayProperties2KHR, displayProperties}

#else

module Vulkan.Types.Struct.VkDisplayProperties2KHR where

#endif