{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersAddInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265SessionParametersCreateInfoEXT" #-} VkVideoEncodeH265SessionParametersCreateInfoEXT =
       VkVideoEncodeH265SessionParametersCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxStdVPSCount :: #{type uint32_t}
         , maxStdSPSCount :: #{type uint32_t}
         , maxStdPPSCount :: #{type uint32_t}
         , pParametersAddInfo :: Ptr VkVideoEncodeH265SessionParametersAddInfoEXT
         }

instance Storable VkVideoEncodeH265SessionParametersCreateInfoEXT where
  sizeOf    _ = #{size      struct VkVideoEncodeH265SessionParametersCreateInfoEXT}
  alignment _ = #{alignment struct VkVideoEncodeH265SessionParametersCreateInfoEXT}

  peek ptr = 
    VkVideoEncodeH265SessionParametersCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxStdVPSCount" ptr)
       <*> peek (offset @"maxStdSPSCount" ptr)
       <*> peek (offset @"maxStdPPSCount" ptr)
       <*> peek (offset @"pParametersAddInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxStdVPSCount" ptr val
    pokeField @"maxStdSPSCount" ptr val
    pokeField @"maxStdPPSCount" ptr val
    pokeField @"pParametersAddInfo" ptr val

instance Offset "sType" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265SessionParametersCreateInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265SessionParametersCreateInfoEXT, pNext}

instance Offset "maxStdVPSCount" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265SessionParametersCreateInfoEXT, maxStdVPSCount}

instance Offset "maxStdSPSCount" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265SessionParametersCreateInfoEXT, maxStdSPSCount}

instance Offset "maxStdPPSCount" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265SessionParametersCreateInfoEXT, maxStdPPSCount}

instance Offset "pParametersAddInfo" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH265SessionParametersCreateInfoEXT, pParametersAddInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersCreateInfoEXT where

#endif