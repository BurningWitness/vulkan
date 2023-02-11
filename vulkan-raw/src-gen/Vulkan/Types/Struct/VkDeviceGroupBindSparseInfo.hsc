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
  sizeOf    _ = #{size      struct VkDeviceGroupBindSparseInfo}
  alignment _ = #{alignment struct VkDeviceGroupBindSparseInfo}

  peek ptr = 
    VkDeviceGroupBindSparseInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"resourceDeviceIndex" ptr)
       <*> peek (offset @"memoryDeviceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"resourceDeviceIndex" ptr val
    pokeField @"memoryDeviceIndex" ptr val

instance Offset "sType" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset struct VkDeviceGroupBindSparseInfo, sType}

instance Offset "pNext" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset struct VkDeviceGroupBindSparseInfo, pNext}

instance Offset "resourceDeviceIndex" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset struct VkDeviceGroupBindSparseInfo, resourceDeviceIndex}

instance Offset "memoryDeviceIndex" VkDeviceGroupBindSparseInfo where
  rawOffset = #{offset struct VkDeviceGroupBindSparseInfo, memoryDeviceIndex}

#else

module Vulkan.Types.Struct.VkDeviceGroupBindSparseInfo where

#endif