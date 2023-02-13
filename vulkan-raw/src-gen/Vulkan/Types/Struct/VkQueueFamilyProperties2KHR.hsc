{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkQueueFamilyProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkQueueFamilyProperties



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyProperties2KHR" #-} VkQueueFamilyProperties2KHR =
       VkQueueFamilyProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , queueFamilyProperties :: VkQueueFamilyProperties
         }

instance Storable VkQueueFamilyProperties2KHR where
  sizeOf    _ = #{size      VkQueueFamilyProperties2KHR}
  alignment _ = #{alignment VkQueueFamilyProperties2KHR}

  peek ptr = 
    VkQueueFamilyProperties2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"queueFamilyProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"queueFamilyProperties" ptr val

instance Offset "sType" VkQueueFamilyProperties2KHR where
  rawOffset = #{offset VkQueueFamilyProperties2KHR, sType}

instance Offset "pNext" VkQueueFamilyProperties2KHR where
  rawOffset = #{offset VkQueueFamilyProperties2KHR, pNext}

instance Offset "queueFamilyProperties" VkQueueFamilyProperties2KHR where
  rawOffset = #{offset VkQueueFamilyProperties2KHR, queueFamilyProperties}

#else

module Vulkan.Types.Struct.VkQueueFamilyProperties2KHR where

#endif