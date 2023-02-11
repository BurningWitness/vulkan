{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Struct.VkDebugUtilsLabelEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDebugUtilsLabelEXT" #-} VkDebugUtilsLabelEXT =
       VkDebugUtilsLabelEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pLabelName :: Ptr #{type char}
         , color :: #{type float}
         }

instance Storable VkDebugUtilsLabelEXT where
  sizeOf    _ = #{size      struct VkDebugUtilsLabelEXT}
  alignment _ = #{alignment struct VkDebugUtilsLabelEXT}

  peek ptr = 
    VkDebugUtilsLabelEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pLabelName" ptr)
       <*> peek (offset @"color" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pLabelName" ptr val
    pokeField @"color" ptr val

instance Offset "sType" VkDebugUtilsLabelEXT where
  rawOffset = #{offset struct VkDebugUtilsLabelEXT, sType}

instance Offset "pNext" VkDebugUtilsLabelEXT where
  rawOffset = #{offset struct VkDebugUtilsLabelEXT, pNext}

instance Offset "pLabelName" VkDebugUtilsLabelEXT where
  rawOffset = #{offset struct VkDebugUtilsLabelEXT, pLabelName}

instance Offset "color" VkDebugUtilsLabelEXT where
  rawOffset = #{offset struct VkDebugUtilsLabelEXT, color}

#else

module Vulkan.Types.Struct.VkDebugUtilsLabelEXT where

#endif