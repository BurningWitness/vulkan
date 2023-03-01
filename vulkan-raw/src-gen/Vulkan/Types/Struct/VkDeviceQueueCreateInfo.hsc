{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDeviceQueueCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceQueueCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceQueueCreateInfo" #-} VkDeviceQueueCreateInfo =
       VkDeviceQueueCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceQueueCreateFlags
         , queueFamilyIndex :: #{type uint32_t}
         , queueCount :: #{type uint32_t}
         , pQueuePriorities :: Ptr #{type float}
         }

instance Storable VkDeviceQueueCreateInfo where
  sizeOf    _ = #{size      VkDeviceQueueCreateInfo}
  alignment _ = #{alignment VkDeviceQueueCreateInfo}

  peek ptr = 
    VkDeviceQueueCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queueCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pQueuePriorities" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"queueFamilyIndex" ptr val
    pokeField @"queueCount" ptr val
    pokeField @"pQueuePriorities" ptr val

instance Offset "sType" VkDeviceQueueCreateInfo where
  rawOffset = #{offset VkDeviceQueueCreateInfo, sType}

instance Offset "pNext" VkDeviceQueueCreateInfo where
  rawOffset = #{offset VkDeviceQueueCreateInfo, pNext}

instance Offset "flags" VkDeviceQueueCreateInfo where
  rawOffset = #{offset VkDeviceQueueCreateInfo, flags}

instance Offset "queueFamilyIndex" VkDeviceQueueCreateInfo where
  rawOffset = #{offset VkDeviceQueueCreateInfo, queueFamilyIndex}

instance Offset "queueCount" VkDeviceQueueCreateInfo where
  rawOffset = #{offset VkDeviceQueueCreateInfo, queueCount}

instance Offset "pQueuePriorities" VkDeviceQueueCreateInfo where
  rawOffset = #{offset VkDeviceQueueCreateInfo, pQueuePriorities}