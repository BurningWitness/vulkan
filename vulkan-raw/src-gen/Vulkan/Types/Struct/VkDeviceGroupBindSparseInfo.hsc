{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDeviceGroupBindSparseInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupBindSparseInfo" #-} VkDeviceGroupBindSparseInfo =
       VkDeviceGroupBindSparseInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , resourceDeviceIndex :: #{type uint32_t}
         , memoryDeviceIndex :: #{type uint32_t}
         }

instance Storable VkDeviceGroupBindSparseInfo where
  sizeOf    _ = #{size      VkDeviceGroupBindSparseInfo}
  alignment _ = #{alignment VkDeviceGroupBindSparseInfo}

  peek ptr = 
    VkDeviceGroupBindSparseInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"resourceDeviceIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryDeviceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"resourceDeviceIndex" ptr val
    pokeField @"memoryDeviceIndex" ptr val

instance Offset "sType" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset VkDeviceGroupBindSparseInfo, sType}

instance Offset "pNext" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset VkDeviceGroupBindSparseInfo, pNext}

instance Offset "resourceDeviceIndex" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset VkDeviceGroupBindSparseInfo, resourceDeviceIndex}

instance Offset "memoryDeviceIndex" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset VkDeviceGroupBindSparseInfo, memoryDeviceIndex}

#else

module Vulkan.Types.Struct.VkDeviceGroupBindSparseInfo where

#endif