{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferMemoryRequirementsInfo2" #-} VkBufferMemoryRequirementsInfo2 =
       VkBufferMemoryRequirementsInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkBufferMemoryRequirementsInfo2 where
  sizeOf    _ = #{size      VkBufferMemoryRequirementsInfo2}
  alignment _ = #{alignment VkBufferMemoryRequirementsInfo2}

  peek ptr = 
    VkBufferMemoryRequirementsInfo2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkBufferMemoryRequirementsInfo2 where
  rawOffset = #{offset VkBufferMemoryRequirementsInfo2, sType}

instance Offset "pNext" VkBufferMemoryRequirementsInfo2 where
  rawOffset = #{offset VkBufferMemoryRequirementsInfo2, pNext}

instance Offset "buffer" VkBufferMemoryRequirementsInfo2 where
  rawOffset = #{offset VkBufferMemoryRequirementsInfo2, buffer}

#else

module Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2 where

#endif