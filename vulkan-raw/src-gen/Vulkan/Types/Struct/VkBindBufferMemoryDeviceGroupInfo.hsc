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
  sizeOf    _ = #{size      VkBindBufferMemoryDeviceGroupInfo}
  alignment _ = #{alignment VkBindBufferMemoryDeviceGroupInfo}

  peek ptr = 
    VkBindBufferMemoryDeviceGroupInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val

instance Offset "sType" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfo, sType}

instance Offset "pNext" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfo, pNext}

instance Offset "deviceIndexCount" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfo, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindBufferMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfo, pDeviceIndices}

#else

module Vulkan.Types.Struct.VkBindBufferMemoryDeviceGroupInfo where

#endif