{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkSysmemColorSpaceFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSysmemColorSpaceFUCHSIA" #-} VkSysmemColorSpaceFUCHSIA =
       VkSysmemColorSpaceFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , colorSpace :: #{type uint32_t}
         }

instance Storable VkSysmemColorSpaceFUCHSIA where
  sizeOf    _ = #{size      VkSysmemColorSpaceFUCHSIA}
  alignment _ = #{alignment VkSysmemColorSpaceFUCHSIA}

  peek ptr = 
    VkSysmemColorSpaceFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"colorSpace" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"colorSpace" ptr val

instance Offset "sType" VkSysmemColorSpaceFUCHSIA where
  rawOffset = #{offset VkSysmemColorSpaceFUCHSIA, sType}

instance Offset "pNext" VkSysmemColorSpaceFUCHSIA where
  rawOffset = #{offset VkSysmemColorSpaceFUCHSIA, pNext}

instance Offset "colorSpace" VkSysmemColorSpaceFUCHSIA where
  rawOffset = #{offset VkSysmemColorSpaceFUCHSIA, colorSpace}

#else

module Vulkan.Types.Struct.VkSysmemColorSpaceFUCHSIA where

#endif