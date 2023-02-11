{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Struct.VkPipelineRasterizationStateStreamCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineRasterizationStateStreamCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationStateStreamCreateInfoEXT" #-} VkPipelineRasterizationStateStreamCreateInfoEXT =
       VkPipelineRasterizationStateStreamCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineRasterizationStateStreamCreateFlagsEXT
         , rasterizationStream :: #{type uint32_t}
         }

instance Storable VkPipelineRasterizationStateStreamCreateInfoEXT where
  sizeOf    _ = #{size      struct VkPipelineRasterizationStateStreamCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineRasterizationStateStreamCreateInfoEXT}

  peek ptr = 
    VkPipelineRasterizationStateStreamCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"rasterizationStream" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"rasterizationStream" ptr val

instance Offset "sType" VkPipelineRasterizationStateStreamCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationStateStreamCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRasterizationStateStreamCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationStateStreamCreateInfoEXT, pNext}

instance Offset "flags" VkPipelineRasterizationStateStreamCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationStateStreamCreateInfoEXT, flags}

instance Offset "rasterizationStream" VkPipelineRasterizationStateStreamCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationStateStreamCreateInfoEXT, rasterizationStream}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationStateStreamCreateInfoEXT where

#endif