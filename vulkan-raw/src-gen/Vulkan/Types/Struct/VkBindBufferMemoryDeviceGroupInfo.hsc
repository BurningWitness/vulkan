{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkBindBufferMemoryDeviceGroupInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBindBufferMemoryDeviceGroupInfo" #-} VkBindBufferMemoryDeviceGroupInfo =
       VkBindBufferMemoryDeviceGroupInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceIndexCount :: #{type uint32_t}
         , pDeviceIndices :: Ptr #{type uint32_t}
         }

instance Storable VkBindBufferMemoryDeviceGroupInfo where
  sizeOf    _ = #{size      struct VkBindBufferMemoryDeviceGroupInfo}
  alignment _ = #{alignment struct VkBindBufferMemoryDeviceGroupInfo}

  peek ptr = 
    VkBindBufferMemoryDeviceGroupInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceIndexCount" ptr)
       <*> peek (offset @"pDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val

instance Offset "sType" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset struct VkBindBufferMemoryDeviceGroupInfo, sType}

instance Offset "pNext" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset struct VkBindBufferMemoryDeviceGroupInfo, pNext}

instance Offset "deviceIndexCount" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset struct VkBindBufferMemoryDeviceGroupInfo, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset struct VkBindBufferMemoryDeviceGroupInfo, pDeviceIndices}

#else

module Vulkan.Types.Struct.VkBindBufferMemoryDeviceGroupInfo where

#endif