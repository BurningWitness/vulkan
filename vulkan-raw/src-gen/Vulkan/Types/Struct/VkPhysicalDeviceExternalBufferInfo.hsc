{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkBufferCreateFlags
import Vulkan.Types.Enum.VkBufferUsageFlags
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalBufferInfo" #-} VkPhysicalDeviceExternalBufferInfo =
       VkPhysicalDeviceExternalBufferInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkBufferCreateFlags
         , usage :: VkBufferUsageFlags
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalBufferInfo where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalBufferInfo}
  alignment _ = #{alignment VkPhysicalDeviceExternalBufferInfo}

  peek ptr = 
    VkPhysicalDeviceExternalBufferInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"usage" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfo, sType}

instance Offset "pNext" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfo, pNext}

instance Offset "flags" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfo, flags}

instance Offset "usage" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfo, usage}

instance Offset "handleType" VkPhysicalDeviceExternalBufferInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfo, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo where

#endif