{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkMemoryAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryAllocateInfo" #-} VkMemoryAllocateInfo =
       VkMemoryAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , allocationSize :: VkDeviceSize -- ^ Size of memory allocation
         , memoryTypeIndex :: #{type uint32_t} -- ^ Index of the of the memory type to allocate from
         }

instance Storable VkMemoryAllocateInfo where
  sizeOf    _ = #{size      VkMemoryAllocateInfo}
  alignment _ = #{alignment VkMemoryAllocateInfo}

  peek ptr = 
    VkMemoryAllocateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"allocationSize" ptr)
       <*> peek (offset @"memoryTypeIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"allocationSize" ptr val
    pokeField @"memoryTypeIndex" ptr val

instance Offset "sType" VkMemoryAllocateInfo where
  rawOffset = #{offset VkMemoryAllocateInfo, sType}

instance Offset "pNext" VkMemoryAllocateInfo where
  rawOffset = #{offset VkMemoryAllocateInfo, pNext}

instance Offset "allocationSize" VkMemoryAllocateInfo where
  rawOffset = #{offset VkMemoryAllocateInfo, allocationSize}

instance Offset "memoryTypeIndex" VkMemoryAllocateInfo where
  rawOffset = #{offset VkMemoryAllocateInfo, memoryTypeIndex}