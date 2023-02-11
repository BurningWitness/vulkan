{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_blend_operation_advanced

module Vulkan.Types.Struct.VkPipelineColorBlendAdvancedStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBlendOverlapEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineColorBlendAdvancedStateCreateInfoEXT" #-} VkPipelineColorBlendAdvancedStateCreateInfoEXT =
       VkPipelineColorBlendAdvancedStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcPremultiplied :: VkBool32
         , dstPremultiplied :: VkBool32
         , blendOverlap :: VkBlendOverlapEXT
         }

instance Storable VkPipelineColorBlendAdvancedStateCreateInfoEXT where
  sizeOf    _ = #{size      struct VkPipelineColorBlendAdvancedStateCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineColorBlendAdvancedStateCreateInfoEXT}

  peek ptr = 
    VkPipelineColorBlendAdvancedStateCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcPremultiplied" ptr)
       <*> peek (offset @"dstPremultiplied" ptr)
       <*> peek (offset @"blendOverlap" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcPremultiplied" ptr val
    pokeField @"dstPremultiplied" ptr val
    pokeField @"blendOverlap" ptr val

instance Offset "sType" VkPipelineColorBlendAdvancedStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineColorBlendAdvancedStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineColorBlendAdvancedStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineColorBlendAdvancedStateCreateInfoEXT, pNext}

instance Offset "srcPremultiplied" VkPipelineColorBlendAdvancedStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineColorBlendAdvancedStateCreateInfoEXT, srcPremultiplied}

instance Offset "dstPremultiplied" VkPipelineColorBlendAdvancedStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineColorBlendAdvancedStateCreateInfoEXT, dstPremultiplied}

instance Offset "blendOverlap" VkPipelineColorBlendAdvancedStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineColorBlendAdvancedStateCreateInfoEXT, blendOverlap}

#else

module Vulkan.Types.Struct.VkPipelineColorBlendAdvancedStateCreateInfoEXT where

#endif