{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Struct.VkDisplayPlaneProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayPlanePropertiesKHR



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPlaneProperties2KHR" #-} VkDisplayPlaneProperties2KHR =
       VkDisplayPlaneProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , displayPlaneProperties :: VkDisplayPlanePropertiesKHR
         }

instance Storable VkDisplayPlaneProperties2KHR where
  sizeOf    _ = #{size      VkDisplayPlaneProperties2KHR}
  alignment _ = #{alignment VkDisplayPlaneProperties2KHR}

  peek ptr = 
    VkDisplayPlaneProperties2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"displayPlaneProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"displayPlaneProperties" ptr val

instance Offset "sType" VkDisplayPlaneProperties2KHR where
  rawOffset = #{offset VkDisplayPlaneProperties2KHR, sType}

instance Offset "pNext" VkDisplayPlaneProperties2KHR where
  rawOffset = #{offset VkDisplayPlaneProperties2KHR, pNext}

instance Offset "displayPlaneProperties" VkDisplayPlaneProperties2KHR where
  rawOffset = #{offset VkDisplayPlaneProperties2KHR, displayPlaneProperties}

#else

module Vulkan.Types.Struct.VkDisplayPlaneProperties2KHR where

#endif