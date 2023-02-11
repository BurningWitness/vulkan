{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBaseOutStructure where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBaseOutStructure" #-} VkBaseOutStructure =
       VkBaseOutStructure
         { sType :: VkStructureType
         , pNext :: Ptr VkBaseOutStructure
         }

instance Storable VkBaseOutStructure where
  sizeOf    _ = #{size      struct VkBaseOutStructure}
  alignment _ = #{alignment struct VkBaseOutStructure}

  peek ptr = 
    VkBaseOutStructure
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val

instance Offset "sType" VkBaseOutStructure where
  rawOffset = #{offset struct VkBaseOutStructure, sType}

instance Offset "pNext" VkBaseOutStructure where
  rawOffset = #{offset struct VkBaseOutStructure, pNext}