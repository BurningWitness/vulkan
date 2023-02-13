{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkQueueFamilyProperties2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkQueueFamilyProperties



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyProperties2" #-} VkQueueFamilyProperties2 =
       VkQueueFamilyProperties2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , queueFamilyProperties :: VkQueueFamilyProperties
         }

instance Storable VkQueueFamilyProperties2 where
  sizeOf    _ = #{size      VkQueueFamilyProperties2}
  alignment _ = #{alignment VkQueueFamilyProperties2}

  peek ptr = 
    VkQueueFamilyProperties2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"queueFamilyProperties" ptr val

instance Offset "sType" VkQueueFamilyProperties2 where
  rawOffset = #{offset VkQueueFamilyProperties2, sType}

instance Offset "pNext" VkQueueFamilyProperties2 where
  rawOffset = #{offset VkQueueFamilyProperties2, pNext}

instance Offset "queueFamilyProperties" VkQueueFamilyProperties2 where
  rawOffset = #{offset VkQueueFamilyProperties2, queueFamilyProperties}

#else

module Vulkan.Types.Struct.VkQueueFamilyProperties2 where

#endif