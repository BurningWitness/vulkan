{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkMemoryAllocateFlagsInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkMemoryAllocateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryAllocateFlagsInfo" #-} VkMemoryAllocateFlagsInfo =
       VkMemoryAllocateFlagsInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkMemoryAllocateFlags
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkMemoryAllocateFlagsInfo where
  sizeOf    _ = #{size      struct VkMemoryAllocateFlagsInfo}
  alignment _ = #{alignment struct VkMemoryAllocateFlagsInfo}

  peek ptr = 
    VkMemoryAllocateFlagsInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkMemoryAllocateFlagsInfo where
  rawOffset = #{offset struct VkMemoryAllocateFlagsInfo, sType}

instance Offset "pNext" VkMemoryAllocateFlagsInfo where
  rawOffset = #{offset struct VkMemoryAllocateFlagsInfo, pNext}

instance Offset "flags" VkMemoryAllocateFlagsInfo where
  rawOffset = #{offset struct VkMemoryAllocateFlagsInfo, flags}

instance Offset "deviceMask" VkMemoryAllocateFlagsInfo where
  rawOffset = #{offset struct VkMemoryAllocateFlagsInfo, deviceMask}

#else

module Vulkan.Types.Struct.VkMemoryAllocateFlagsInfo where

#endif