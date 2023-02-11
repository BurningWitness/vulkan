{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkMicromapBuildSizesInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMicromapBuildSizesInfoEXT" #-} VkMicromapBuildSizesInfoEXT =
       VkMicromapBuildSizesInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , micromapSize :: VkDeviceSize
         , buildScratchSize :: VkDeviceSize
         , discardable :: VkBool32
         }

instance Storable VkMicromapBuildSizesInfoEXT where
  sizeOf    _ = #{size      struct VkMicromapBuildSizesInfoEXT}
  alignment _ = #{alignment struct VkMicromapBuildSizesInfoEXT}

  peek ptr = 
    VkMicromapBuildSizesInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"micromapSize" ptr)
       <*> peek (offset @"buildScratchSize" ptr)
       <*> peek (offset @"discardable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"micromapSize" ptr val
    pokeField @"buildScratchSize" ptr val
    pokeField @"discardable" ptr val

instance Offset "sType" VkMicromapBuildSizesInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildSizesInfoEXT, sType}

instance Offset "pNext" VkMicromapBuildSizesInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildSizesInfoEXT, pNext}

instance Offset "micromapSize" VkMicromapBuildSizesInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildSizesInfoEXT, micromapSize}

instance Offset "buildScratchSize" VkMicromapBuildSizesInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildSizesInfoEXT, buildScratchSize}

instance Offset "discardable" VkMicromapBuildSizesInfoEXT where
  rawOffset = #{offset struct VkMicromapBuildSizesInfoEXT, discardable}

#else

module Vulkan.Types.Struct.VkMicromapBuildSizesInfoEXT where

#endif