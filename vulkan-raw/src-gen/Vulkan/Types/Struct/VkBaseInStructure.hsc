{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBaseInStructure where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBaseInStructure" #-} VkBaseInStructure =
       VkBaseInStructure
         { sType :: VkStructureType
         , pNext :: Ptr VkBaseInStructure
         }

instance Storable VkBaseInStructure where
  sizeOf    _ = #{size      VkBaseInStructure}
  alignment _ = #{alignment VkBaseInStructure}

  peek ptr = 
    VkBaseInStructure
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val

instance Offset "sType" VkBaseInStructure where
  rawOffset = #{offset VkBaseInStructure, sType}

instance Offset "pNext" VkBaseInStructure where
  rawOffset = #{offset VkBaseInStructure, pNext}