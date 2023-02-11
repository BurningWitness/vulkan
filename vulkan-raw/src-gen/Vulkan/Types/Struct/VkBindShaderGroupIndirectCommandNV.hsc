{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkBindShaderGroupIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkBindShaderGroupIndirectCommandNV" #-} VkBindShaderGroupIndirectCommandNV =
       VkBindShaderGroupIndirectCommandNV
         { groupIndex :: #{type uint32_t}
         }

instance Storable VkBindShaderGroupIndirectCommandNV where
  sizeOf    _ = #{size      struct VkBindShaderGroupIndirectCommandNV}
  alignment _ = #{alignment struct VkBindShaderGroupIndirectCommandNV}

  peek ptr = 
    VkBindShaderGroupIndirectCommandNV
       <$> peek (offset @"groupIndex" ptr)


  poke ptr val = do
    pokeField @"groupIndex" ptr val

instance Offset "groupIndex" VkBindShaderGroupIndirectCommandNV where
  rawOffset = #{offset struct VkBindShaderGroupIndirectCommandNV, groupIndex}

#else

module Vulkan.Types.Struct.VkBindShaderGroupIndirectCommandNV where

#endif