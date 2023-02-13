{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkFormatProperties2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkFormatProperties2" #-} VkFormatProperties2 =
       VkFormatProperties2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , formatProperties :: VkFormatProperties
         }

instance Storable VkFormatProperties2 where
  sizeOf    _ = #{size      VkFormatProperties2}
  alignment _ = #{alignment VkFormatProperties2}

  peek ptr = 
    VkFormatProperties2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"formatProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"formatProperties" ptr val

instance Offset "sType" VkFormatProperties2 where
  rawOffset = #{offset VkFormatProperties2, sType}

instance Offset "pNext" VkFormatProperties2 where
  rawOffset = #{offset VkFormatProperties2, pNext}

instance Offset "formatProperties" VkFormatProperties2 where
  rawOffset = #{offset VkFormatProperties2, formatProperties}

#else

module Vulkan.Types.Struct.VkFormatProperties2 where

#endif