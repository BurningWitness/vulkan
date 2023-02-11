{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Struct.VkDisplayModeProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayModePropertiesKHR



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayModeProperties2KHR" #-} VkDisplayModeProperties2KHR =
       VkDisplayModeProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , displayModeProperties :: VkDisplayModePropertiesKHR
         }

instance Storable VkDisplayModeProperties2KHR where
  sizeOf    _ = #{size      struct VkDisplayModeProperties2KHR}
  alignment _ = #{alignment struct VkDisplayModeProperties2KHR}

  peek ptr = 
    VkDisplayModeProperties2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"displayModeProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"displayModeProperties" ptr val

instance Offset "sType" VkDisplayModeProperties2KHR where
  rawOffset = #{offset struct VkDisplayModeProperties2KHR, sType}

instance Offset "pNext" VkDisplayModeProperties2KHR where
  rawOffset = #{offset struct VkDisplayModeProperties2KHR, pNext}

instance Offset "displayModeProperties" VkDisplayModeProperties2KHR where
  rawOffset = #{offset struct VkDisplayModeProperties2KHR, displayModeProperties}

#else

module Vulkan.Types.Struct.VkDisplayModeProperties2KHR where

#endif